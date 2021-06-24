require('dotenv').config();
console.log(process.env);
module.exports = {
    user: process.env.USERNAME,
    password: process.env.PASSWORD,
    connectString: `(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=${process.env.HOSTS})(PORT=1521))(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=${process.env.SERVICE_NAME})))`,
    externalAuth: false
};
