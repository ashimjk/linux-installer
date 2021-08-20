cleanup:
	sh ./prepare-backup/step-1-cleanup.sh

backup:
	sh ./prepare-backup/step-2-backup.sh

install-1:
	sh ./start-setup/step-1-install.sh

install-2:
	zsh ./start-setup/step-2-install.sh

restore:
	sh ./start-setup/step-3-restore.sh
