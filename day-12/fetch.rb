our_hash = {"J" => 10, "Q"=>11, "K"=>12, "A"=>11}
# our_hash["J"]
#   => 10
#
# our_hash["B"]
#   => nil
#
# our_hash.fetch("J")
#   => 10
# our_hash.fetch("b")
#   => Raise KeyError and blow-up :boom:


# protect against nils when not found
value = our_hash.fetch("B", :not_found_for_our_hash)
value.calculate_coolness

# do shit when not found
our_hash.fetch("A") do
  log_not_found
  show_error_screen and return false
end
