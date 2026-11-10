# SailfishOS patches for Samsung Galaxy Grand Prime

Apply these patches before building and packaging anything and after applying the base hybris-patches. The scirpt is identical to base hybris-patches.

```sh
# Inside Platform SDK
cd $ANDROID_ROOT
git clone https://github.com/fortuna-for-smoothie/fortuna3g-patches.git
fortuna3g-patches/apply-patches.sh --mb
```
