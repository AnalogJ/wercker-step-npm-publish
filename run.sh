if [ ! "$WERCKER_NPM_PUBLISH_ONLY_WHEN" = "$WERCKER_GIT_BRANCH" ]; then
    echo "exiting. $WERCKER_NPM_PUBLISH_ONLY_WHEN  != $WERCKER_GIT_BRANCH"
    setMessage "skipping, can only publish on specified branch [ $WERCKER_NPM_PUBLISH_ONLY_WHEN ]"
    exit 0
fi


echo "Generating ~/.npmrc file"
echo "_auth = $WERCKER_NPM_PUBLISH_AUTH" >> ~/.npmrc
echo "_auth = $WERCKER_NPM_PUBLISH_EMAIL" >> ~/.npmrc

echo "Publishing package"
npm publish

