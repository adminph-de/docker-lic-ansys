# Example of a container run

```bash
docker container run --name ansys-lic01-p \
        --hostname ansys-lic01-p \
        --mac-address="00:0d:3a:bb:a2:06" \
        --publish 8081:1084 \
        --publish 1001:1084 \
        --publish 2001:2325 \
        --publish 49921:49921 \
        --volume ansys-lic01-p_license:/ansys_inc/shared_files/licensing/license_files/ \
        ansyslic:latest
```

```bash
docker container run --name ansys-lic02-p \
        --hostname ansys-lic02-p \
        --mac-address="00:0d:3a:bb:a2:06" \
        --publish 8082:1084 \
        --publish 1002:1084 \
        --publish 2002:2325 \
        --publish 49922:49922 \
        --volume ansys-lic02-p_license:/ansys_inc/shared_files/licensing/license_files/ \
        ansyslic:latest
```

```bash
docker container run --name ansys-lic03-p \
        --hostname ansys-lic03-p \
        --mac-address="00:0d:3a:c9:d6:6d" \
        --publish 8083:1084 \
        --publish 1003:1084 \
        --publish 2003:2325 \
        --publish 49923:49923 \
        --volume ansys-lic03-p_license:/ansys_inc/shared_files/licensing/license_files/ \
        ansyslic:latest
```

```bash
docker container run --name ansys-lic04-p \
        --hostname ansys-lic04-p \
        --mac-address="00:0d:3a:45:05:ab" \
        --publish 8083:1084 \
        --publish 1004:1084 \
        --publish 2004:2325 \
        --publish 49924:49924 \
        --volume ansys-lic04-p_license:/ansys_inc/shared_files/licensing/license_files/ \
        ansyslic:latest
```
