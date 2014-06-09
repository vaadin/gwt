#!/bin/bash
#
# Pushes GWT artifacts to a local (the default) or remote maven repository
# To push remote, set 2 env variables: GWT_MAVEN_REPO_URL and GWT_MAVEN_REPO_ID
#
# GWT_MAVEN_REPO_ID = a server id in your .m2/settings.xml with remote repo username and password
#
# Sonatype staging repo (promotes to Maven Central)
#   GWT_MAVEN_REPO_URL=https://oss.sonatype.org/service/local/staging/deploy/maven2/ 
#
# Sonatype Google SNAPSHOTs repo (can only deploy SNAPSHOTs here, and they are immediately public)
#   GWT_MAVEN_REPO_URL=https://oss.sonatype.org/content/repositories/google-snapshots/

pushd $(dirname $0) >/dev/null 2>&1

export pomDir=./poms-vaadin

source lib-gwt.sh

if [[ "$gwtPath" == "" || ! -f  $gwtPath ]]; then
  echo "ERROR: Cannot find file at \"$gwtPath\""
  exit 1
fi

maven-gwt "$gwtVersion" \
          "$gwtPath" \
	  "$repoUrl" \
	  "$repoId"

popd >/dev/null 2>&1
