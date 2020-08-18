sh ./setup/d.sh "$1"
sh ./setup/l.sh "$1.Infrastructure"
sh ./setup/l.sh "$1.Core"
sh ./setup/l.sh "$1.Service"
dotnet restore ".\\$1.sln"
sh ./setup/clean.sh