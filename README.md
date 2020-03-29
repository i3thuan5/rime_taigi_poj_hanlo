# Pún choan-àn bô tih hōaⁿ--lo͘h

# rime_taigi_poj_hanlo
台語POJ漢羅輸入法 for Rime iăn-jín

## Khai-huat/Development

Rime ê 官方開發手冊 tī [wiki](https://github.com/rime/home/wiki) tsia.

```
docker run --rm -t \
  -v `pwd`/BDD:/rime_taigi_poj_hanlo/BDD \
  -v `pwd`/taigi_pojhanlo_sujiphoat:/rime_taigi_poj_hanlo/taigi_pojhanlo_sujiphoat \
  -e PYTHONPATH="/rime_taigi_poj_hanlo/BDD" \
  --workdir "/rime_taigi_poj_hanlo/taigi_pojhanlo_sujiphoat/" \
  i3thuan5/rime-taigi-testing-env behave /rime_taigi_poj_hanlo/BDD/features
```

