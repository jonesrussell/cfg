import commander from "commander";
import fs from "fs";

commander.version("0.1.0");

const path = "./package.json";

try {
  fs.readFileSync(path);
  console.error("Cannot find package.json");
} catch (err) {
  console.error(err);
}
