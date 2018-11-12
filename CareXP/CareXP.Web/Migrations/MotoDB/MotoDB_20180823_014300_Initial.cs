using FluentMigrator;

namespace CareXP.Migrations.MotoDB
{
    [Migration(20180823014300)]
    public class MotoDB_20180823_014300_Initial : Migration
    {
        public override void Up()
        {
            IfDatabase("SqlServer", "SqlServer2000", "SqlServerCe")
                .Execute.EmbeddedScript
                (@"CareXP.Migrations.MotoDB.MotoDBScript_SqlServer.sql");
            //                .Execute.EmbeddedScript(System.AppDomain.CurrentDomain.BaseDirectory + @"Migrations\Moto\MotoDBScript_SqlServer.sql");
        }

        public override void Down()
        {
        }
    }
}