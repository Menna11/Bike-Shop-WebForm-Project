using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication7
{
    public partial class articles : System.Web.UI.Page
    {
        public List<Article> Articles { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchArticles();
                ArticlesRepeater.DataSource = Articles;
                ArticlesRepeater.DataBind();
            }
        }

        protected void btnAddComment_Click(object sender, EventArgs e)
        {
            Button btnAddComment = (Button)sender;
            RepeaterItem repeaterItem = (RepeaterItem)btnAddComment.NamingContainer;
            int articleId = Convert.ToInt32(btnAddComment.CommandArgument);
            TextBox txtComment = (TextBox)repeaterItem.FindControl("comment");

            string comment = txtComment.Text;

            string connectionString = "Data Source=.;Initial Catalog=BikeShop;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string insertQuery = "INSERT INTO Comments (articleId, commentContent, userId) VALUES (@ArticleId, @CommentContent, 1)";
                SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
                insertCommand.Parameters.AddWithValue("@ArticleId", articleId);
                insertCommand.Parameters.AddWithValue("@CommentContent", comment);
                insertCommand.ExecuteNonQuery();
            }

            txtComment.Text = "";

            FetchArticles();
            ArticlesRepeater.DataSource = Articles;
            ArticlesRepeater.DataBind();
        }

        private void FetchArticles()
        {
            Articles = new List<Article>();

            string connectionString = "Data Source=.;Initial Catalog=BikeShop;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT Articles.articleId, Articles.title, Articles.content, Comments.commentContent " +
                                "FROM Articles " +
                                "LEFT JOIN Comments ON Articles.articleId = Comments.articleId " +
                                "ORDER BY Articles.articleId, Comments.commentId";
                SqlCommand command = new SqlCommand(query, connection);
                SqlDataReader reader = command.ExecuteReader();

                int currentArticleId = -1;
                Article currentArticle = null;

                while (reader.Read())
                {
                    int articleId = (int)reader["articleId"];

                    if (articleId != currentArticleId)
                    {
                        currentArticle = new Article
                        {
                            ArticleId = articleId,
                            Title = reader["title"].ToString(),
                            Content = reader["content"].ToString(),
                            Comments = new List<string>()
                        };
                        currentArticleId = articleId;
                        Articles.Add(currentArticle);
                    }

                    string commentContent = reader["commentContent"].ToString();
                    if (!string.IsNullOrEmpty(commentContent))
                    {
                        currentArticle.Comments.Add(commentContent);
                    }
                }

                reader.Close();
                command.Dispose();
            }
        }
    }

    public class Article
    {
        public int ArticleId { get; set; }
        public string Title { get; set; }
        public string Content { get; set; }
        public List<string> Comments { get; set; }
    }
}
