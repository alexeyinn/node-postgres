const express = require("express");
const app = express();
const port = process.env.port || 8080;

const userRouter = require("./routes/user.routes");

app.use(express.json());
app.use("/api", userRouter);

app.listen(port, () => console.log(`Server started on port ${port}!`));
