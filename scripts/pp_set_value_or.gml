///pp_set_value_or()


if (target.ptp[val1] div val2) mod 2 != value{
 if value = 0{
  target.ptp[val1] -= power(2,val2-1)
 }
 else{
  target.ptp[val1] += power(2,val2-1)
 }
}
