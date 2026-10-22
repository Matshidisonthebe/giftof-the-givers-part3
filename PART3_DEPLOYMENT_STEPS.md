# Part 3 deployment steps

## App Service
1. Create or use the existing Azure App Service from Part 1.
2. In Azure DevOps create an Azure Resource Manager service connection.
3. Replace the placeholders in `azure-appservice-deployment.yml`.
4. Add the deployment step after the build artifact is created.
5. Commit to `main` and allow the pipeline to run.
6. Open the App Service URL and capture the live-site screenshot.

## Azure Function
1. Use the Function App created for Part 2.
2. Create/use the Azure service connection.
3. Replace the placeholders in `azure-function-deployment.yml`.
4. Publish the Function project as an artifact or add a `DotNetCoreCLI@2 publish` step before the AzureFunctionApp task.
5. Trigger the pipeline and test the HTTP endpoint in Azure.

## Azure SQL
1. Back up/verify the production database before schema changes.
2. Review `sql-schema-update.sql`.
3. Run it using an approved Azure SQL deployment method.
4. Capture evidence of the new `ReferenceCode` column/index in the Azure SQL database.

Do not put database passwords, function keys or service-principal secrets into the repository. Use Azure DevOps secret variables/service connections.
