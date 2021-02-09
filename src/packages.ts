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
} catch (err) {
  console.error(err);
}
console.log("%j", data);
console.table(data.dependencies, ['Name', 'Version']);
console.info('dependencies');
console.table(data.dependencies);

console.info('devDependencies');
console.table(data.devDependencies);
