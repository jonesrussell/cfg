const shell = require('shelljs');

// Make sure git is installed
if (!shell.which('git')) {
  shell.echo('Error: This script requires git');
  shell.exit(1);
}

// Run external script synchronously
if (shell.exec('./install.sh').code !== 0) {
  shell.echo('Error: Setup failed');
  shell.exit(1);
}
