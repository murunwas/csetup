dotnet new classlib --name $1
 rm ".\\$1\Class1.cs"
dotnet sln add ".\\$1\\$1.csproj"