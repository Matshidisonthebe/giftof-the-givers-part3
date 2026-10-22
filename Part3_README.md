# Gift of the Givers — Part 3 Coding Package

This package extends the Part 1 + Part 2 project for Part 3: Testing, Deployment and Handover.

## Section A
- `Tests/GiftOfTheGivers.UnitTests` — 3 unit tests.
- `Tests/GiftOfTheGivers.IntegrationTests` — MVC/database integration tests using EF Core InMemory.
- `Tests/GiftOfTheGivers.SeleniumTests` — 2 Selenium UI scenarios.
- `LoadTests/gift_of_the_givers_load.js` — k6 small-scale load test configured for 5 virtual users.

## Section B
- `azure-pipelines-part3.yml` — restore, build and automated test pipeline configuration.

## Section C
- `DeploymentScripts/azure-appservice-deployment.yml` — App Service deployment step.
- `DeploymentScripts/azure-function-deployment.yml` — Function deployment step.
- `DeploymentScripts/sql-schema-update.sql` — lightweight additive SQL update example.

## Section D
- `Handover/USER_MANUAL.md` — non-technical user manual.
- `Handover/TEAM_CONTRIBUTION_TEMPLATE.md` — one-page team contribution template.

## Important
The package contains configuration and code for the required activities. Azure resources, service connections, live URLs, pipeline runs, Selenium execution, load-test results and screenshots must be generated using the group's own Azure/Visual Studio environment. They are not represented as completed here.

The environment used to prepare this package did not have the .NET SDK available, so the tests were not executed in this environment.
