require('dotenv').config();
const nodemailer = require("nodemailer");
const SMTPConnection = require("nodemailer/lib/smtp-connection");
let connection = new SMTPConnection();

let transporter = nodemailer.createTransport({
    service: 'gmail',
    port: 465,
    secure: true,
    pool: true,
    auth: {
      user: process.env.EMAIL, // generated ethereal user
      pass: process.env.PASSWORD, // generated ethereal password
    },
  });
  
module.exports = transporter