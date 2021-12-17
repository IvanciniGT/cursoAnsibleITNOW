{{ansible_local.installedVersions | zip (ansible_local.currentVersions) | list}}
{{ansible_local.installedVersions.VERSIONS | dict2items | zip (ansible_local.currentVersions.VERSIONS| dict2items) | list}}

[
    -    - key: curl
           value: 7.58.0 
         - key: curl
           value: 7.58.0 
    -    - key: git
           value: 2.34.1
         - key: git
           value: 2.34.1
    -    - key: nginx
           value: 1.14.0
         - key: nginx
           value: 1.14.0

]

combine()
currentVersions.VERSIONS | dict2items

git: 2.34.1
curl: 7.58.0
nginx: 1.14.0

  VVVVVV

- key: curl
value: 7.58.0 
- key: git
value: 2.34.1
- key: nginx
value: 1.14.0


- 1
- 2

- a 
- b 

ZIP:

- - 1
  - a
- - 2
  - b

