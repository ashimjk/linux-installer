cd code;
find ./ -name 'node_modules' -exec rm -rf {} \;
find ./ -name 'package-lock.json' -exec rm -rf {} \;
find ./ -name 'target' -exec rm -rf {} \;
find ./ -name 'dist' -exec rm -rf {} \;
find ./ -name 'artifacts' -exec rm -rf {} \;
find ./ -name 'venv' -exec rm -rf {} \;
