const express = require("express");
const app = express();
const port = process.env.port || 8080;

const userRouter = require("./routes/user.routes");
const postRouter = require("./routes/post.routes");

app.use(express.json());
app.use("/api", userRouter);
app.use("/api", postRouter);

app.listen(port, () => console.log(`Server started on port ${port}!`));
