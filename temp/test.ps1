# HEY GUYZ. I'M IN YOUR VSCODE BREAKING YOUR THINGS. Me too


$SQL = "select name from sys.server_principals where name = 'andrew'"

$server = "ANDREWPP5520\SQL2017"

$Login = Invoke-SqlCMD -ServerInstance $SErver -Query $SQL


Describe "Login Test"{
    Context "ServerConfig"{
        It "Login Andrew should exist on $Server"{
            $Login.name | Should Be 'Andrew1'
        }
    }
}


