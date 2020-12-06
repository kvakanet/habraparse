#!/bin/sh

IMAGENAME='habratest/savehabr:dev'
SAVEDIR="${HOME}/savetest"
CODEDIR="${HOME}/codetest"


docker run -v "${SAVEDIR}":/save -v "${CODEDIR}":/mytest --rm=true "${IMAGENAME}" -c save_post 208866 /save/208866.pdf

docker run -v "${SAVEDIR}":/save -v "${CODEDIR}":/mytest --rm=true "${IMAGENAME}" -c save_post 500162 /save/500162.pdf
