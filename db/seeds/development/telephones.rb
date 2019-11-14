1.upto(30) do |i|
  Telephone.create(
    friend_id: i,
    number: "00000000#{i}",
    cellphone: 0
  )
end