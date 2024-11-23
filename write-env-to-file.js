const fs = require('fs');

const config = {
  MAP_KEY: process.env.MAP_KEY,
  SERVICE_ID: process.env.SERVICE_ID,
  TEMPLATE_ID: process.env.TEMPLATE_ID,
  USER_ID: process.env.USER_ID,
};

fs.writeFileSync('./web/config.js', `window.env = ${JSON.stringify(config)};`);
