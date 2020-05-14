const shell = require('shelljs');

// Make sure git is installed
shell.echo('git? ');

if (!shell.which('git')) {
    shell.echo('🖕');
    shell.exit(1);
}

shell.echo('🤘');
shell.echo("\n\n");

// Run external script synchronously
if (shell.exec('./install.sh').code !== 0) {
  shell.echo('Error: Setup failed');
  shell.exit(1);
}

