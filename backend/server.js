import express from 'express';
import {handler} from "../frontend/build/handler.js";


const app = express();
const port = 81;

app.use(express.urlencoded({extended: true})) // meget viktig

app.get("/api", (req, res) => {
    res.send("Hello World!");
});

app.use(handler);

app.listen(port, () => {
    console.log(`Server is listening on port: ${port}`);
});
