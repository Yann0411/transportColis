const { Client } = require("pg");

const client = new Client();

client.connect();

module.exports = client;

// const { Pool } = require('pg');
// const pool = new Pool({
//   user: 'yannchristophe',
//   host: 'localhost',
//   database: 'cadex', // Utilise le nom de ta base de données ici
//   port: 5432,
// });
