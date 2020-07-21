# Migrate Test Results and Test Steps
This example will migrate test results and test step data. 

## Migrating From an Existing Server
1. Read and understand the [prerequisites](https://github.com/prestwick/systemlink-migration-sandbox/blob/master/README.md#Prerequisites) for this script. 
2. Clone or download this repository
3. Open a PowerShell window in the directory location of this script
4. Run `\.migrate-from-test-data.ps1`
5. Copy the `migration` directory created at `C:\` to another SystemLink server. 

## Migrating To a New Server
1. Copy the `migration` directory creating by executing the **Migratration From an Existing Server** steps to `C:\` of the new SystemLink server. 
2. Clone or download this repository
3. Open a PowerShell window in the directory location of this script
4. Run `\.migrate-to-test-data.ps1`

