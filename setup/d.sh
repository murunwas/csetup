echo "creating new project $1"

    dotnet new sln --name $1
    dotnet new webapi --name $1.Web
    dotnet sln add ".\\$1.Web\\$1.Web.csproj"
    rm ".\\$1.Web\WeatherForecast.cs"
    rm ".\\$1.Web\Controllers\WeatherForecastController.cs"
    

    touch Dockerfile

 echo "$1 successfully created."
