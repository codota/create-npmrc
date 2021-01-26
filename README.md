# Create a .npmrc file for the github repository

Github workflow action to create .npmrc file for github to the root folder

Pass all sensitive data using secrets.

## Inputs

### `org_name`

Organization name (Github repository name)

### `auth_token`

AuthToken that is able to download files from the repository, can also be passed as env and it's rather recommended this way


## Example usage
Either:
```ylm
uses: codota/create-npmrc@3
with:
  env:
    AUTH_TOKEN: ${{ secrets.NPM_TOKEN }}
```
Or:
```ylm
uses: codota/create-npmrc@3
with:
  auth_token: ${{ secrets.NPM_TOKEN }}
```

## Example output

```npmrc
@codota:registry=https://codota.jfrog.io/artifactory/api/npm/codota-npm/
//codota.jfrog.io/artifactory/api/npm/codota-npm/:_authToken=**auth-token-here**
```