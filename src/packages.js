#!/usr/bin/env node
import { readFileSync } from "fs";
import commander from "commander";
commander.version("0.1.0");
const pwd = process.cwd();
const p = `${pwd}/package.json`;
console.log(p);
let data = null;
try {
    data = JSON.parse(readFileSync(p, 'utf-8'));
}
catch (err) {
    console.error(err);
}
console.log(data);
