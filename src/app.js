exports.lambdaHandler = async (event, context) => {

    console.log(process.env.S3_BUCKET);
    console.log(JSON.stringify(event));

};
