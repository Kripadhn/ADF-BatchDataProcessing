Here's an example of a step-by-step process for performing data cleansing and quality checks with Azure Data Factory (ADF) using a pipeline and data flow:
1. Create an Azure Data Factory:
• Go to the Azure portal and create a new Azure Data Factory.
2. Create a data source:
• In the ADF, create a connection to your data source. This could be an on-premises database, a cloud database, or a file stored in a cloud storage service like Azure Blob Storage or Azure Data Lake Storage.
3. Create a data sink:
• In the ADF, create a connection to the data sink where you want to store your cleansed data. This could be a database or a cloud storage service.
4. Create a pipeline:
• In the ADF, create a pipeline that defines the data cleansing and quality checks process.
5. Add a data flow to the pipeline:
• In the pipeline, add a data flow that performs the data cleansing and quality checks. This can be done in the Azure portal by selecting the "New" button and selecting "Data Flow."
6. Transform and cleanse data in the data flow:
• In the data flow, add data transformation activities that perform data cleansing operations, such as removing duplicates, replacing null values, or transforming data from one format to another.
7. Perform quality checks in the data flow:
• In the data flow, add data transformation activities that perform quality checks on the data, such as checking for missing values, ensuring that data values fall within a specified range, or checking for inconsistencies in the data.
8. Map the data source to the data sink in the pipeline:
• In the pipeline, map the data source to the data sink to specify where the cleansed data should be stored.
9. Test the pipeline:
• In the ADF, go to the pipeline, click on the "Author & Monitor" tab, then go to "Author" and click on the "Debug" button to manually run the pipeline and test the data cleansing and quality checks process.
10. Monitor pipeline performance:
• In the ADF, go to the pipeline, click on the "Author & Monitor" tab, then go to the "Monitor" tab to view the pipeline run history, monitor the pipeline status, and check for any errors.
11. Automate the pipeline:
• In the ADF, go to the pipeline, click on the "Publish all" button to publish any changes to the pipeline.
Set up a schedule to automatically run the pipeline at specified intervals, such as daily or weekly, to ensure that your data is cleansed and quality checked on a regular basis.
12. Finally, save and publish the data flow and pipeline to make it available for use. You can monitor the pipeline and data flow in the ADF portal, and receive notifications in case of any errors or failures during execution.

It's important to note that this is just a simple example, and the specific code for your data cleansing and quality checks will depend on the specific requirements of your data and use case. However, this example should give you a basic idea of how to implement data cleansing and quality checks using ADF and data flows.