player = { health = 200 }
function takeDamage(self, amount)
    self.health = self.health - amount
end

takeDamage(player, 20)
