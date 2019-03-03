chapters = [
[1,"Abduction"],
[2,"The Televangelist"],
[3,"Mission To Earth"],
[4,"Greg’s Theory"],
[5,"Vacation"],
[6,"UFOs Arrive"],
[7,"Panel of Expert"],
[8,"Welcome to Raquesti"],
[9,"Cults Proliferate"],
[10,"Occupy DC/Rise of the Televangelist"],
[11,"Greg and Dot Separate"],
[12,"Call out the Military"],
[13,"Coup d'etat"],
[14,"UFOs Depart"],
[15,"The Training of Paxxa"],
[16,"State Church Established"],
[17,"Theocracy becomes Despotic"],
[18,"Maki Established"],
[19,"Greg is Captured"],
[20,"Nicole Taunts Greg"],
[21,"Maki Skirmishes Theocracy"],
[22,"Greg Creates Prototype"],
[23,"Dots Death"],
[24,"Greg With Maki"],
[25,"Paxxa’s Mission"],
[26,"Arrival"],
[27,"Raquesti Studies Institute"],
[28,"Paxxa Disillusioned"],
[29,"Maki Frees Greg"],
[30,"Theocracy searches for Paxxa"],
[31,"Paxxa Meets Greg"],
[32,"Device Created"],
[33,"Device Potential Realized"],
[34,"Attempt to Jumpstart Revolution"],
[35,"Mole Reports To Nicole"],
[36,"Paxxa Is Captured"],
[37,"Greg Rescues Paxxa"],
[38,"Revolution Fails"],
[39,"Maki Defeated"],
[40,"Paxxa Recalled"],
[41,"Mission Continues"]


]

chapters.each do |sequence, title|
  Section.create(sequence: sequence,title: title)
end

