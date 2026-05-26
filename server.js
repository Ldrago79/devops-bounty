const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h1>Startup App V1</h1><p>Deployed via automated CI/CD pipeline!</p>');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});