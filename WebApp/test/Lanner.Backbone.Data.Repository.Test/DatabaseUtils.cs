using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace Lanner.Backbone.Data.Repository.Test
{
    internal class DatabaseUtils
    {
        internal static void ExecuteSqlScriptFromFile(string connectionString, string scriptFilename)
        {
            using (var sr = new StreamReader(scriptFilename))
            {
                var script = sr.ReadToEnd();
                ExecuteSqlScriptBlock(connectionString, script);
            }
        }

        internal static void ExecuteSqlScript(string connectionString, string sql)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                ExecuteSqlScriptCommand(connection, sql);
            }
        }

        private static void ExecuteSqlScriptBlock(string connectionString, string sqlScript)
        {
            var stmt = new StringBuilder();

            // Parse the script until we get to a line with just a GO statement
            // we can then execute the SQL statement extracted from the DDL script
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (var sr = new StringReader(sqlScript))
                {
                    string line;

                    while ((line = sr.ReadLine()) != null)
                    {
                        if (line.Trim().ToUpper() == "GO")
                        {
                            var sql = stmt.ToString();

                            ExecuteSqlScriptCommand(connection, sql);
                            stmt.Length = 0;
                        }
                        else
                        {
                            stmt.AppendFormat("{0}\r\n", line);
                        }
                    }
                }
            }
        }

        private static void ExecuteSqlScriptCommand(SqlConnection connection, string sqlScript)
        {
            using (var cmd = new SqlCommand(sqlScript, connection))
            {
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }

        internal static void CreateDatabase(string connectionString, string databaseName, string databaseFilename)
        {            
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();

                DetachDatabase(connectionString, databaseName);

                using (var cmd = new SqlCommand())
                {
                    cmd.CommandText =
                        $"CREATE DATABASE {databaseName} ON (NAME = N'{databaseName}', FILENAME = '{databaseFilename}')";
                    cmd.Connection = connection;
                    cmd.ExecuteNonQuery();
                }                
            }
        }

        private static void DetachDatabase(string connectionString, string databaseName)
        {
            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();

                try
                {
                    var cmd = connection.CreateCommand();
                    cmd.CommandText = $"exec sp_detach_db '{databaseName}'";
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    Console.WriteLine($"DetachDatabase: Could not detach database {databaseName}");
                }
            }
        }
    }
}
