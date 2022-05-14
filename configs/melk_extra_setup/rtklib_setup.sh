#!/usr/bin/env sh

REPODIRT="$1"
RTKDIR="rtkbase"

cd ~

if [ -d "$REPODIR"/"$RTKDIR" ]; then
  echo "RTKLIB seems to be already there in ${REPODIR}/${RTKDIR}..."
else
  echo "RTKLIB seems to be not there ${REPODIR}/${RTKDIR}..."
  cd $REPODIR
  echo "Installing RTKLIB in ${DIR}"
  git clone https://github.com/Stefal/rtkbase
  cd rtkbase
  git switch dev_2.3.4
  git fetch
  cd tools
  sudo ./install.sh --rtklib
fi
