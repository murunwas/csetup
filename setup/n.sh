echo "creating new project $1"

dotnet new webapi --name $1
dotnet sln add ".\\$1\\$1.csproj"
rm ".\\$1\WeatherForecast.cs"
rm ".\\$1\Controllers\WeatherForecastController.cs"
dotnet restore ".\Invoice.sln"

echo "$1 successfully created."