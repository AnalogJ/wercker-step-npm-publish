# npm-publish step

Executes the `npm version` command to bump up the current npm package version..

### auth
- type: string
- optional: false
- description: NPM auth token

### email
- type: string
- optional: false
- description: npm user account email address

### only_when
- type: string
- optional: false
- description: specifies when this this step can run.

## Example

    - npm-version
        type: patch
        message: automatic version bump by wercker.

# License

The MIT License (MIT)