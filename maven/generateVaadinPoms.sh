#!/bin/bash

rm -rf poms-vaadin
cp -R poms poms-vaadin
for a in poms-vaadin/*/*.xml poms-vaadin/*/*/*.xml
do
	gsed -i "s/com.google.gwt/com.vaadin.external.gwt/g" $a
	gsed -i "s/com.google.web.bindery/com.vaadin.external.gwt.web.bindery/g" $a
done
