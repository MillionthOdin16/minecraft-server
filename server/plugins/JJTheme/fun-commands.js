// JJ's Fun Commands Plugin
// Adds fun commands for celebrations!

registerCommand('jj', (player, args) => {
  // JJ celebration effect
  player.sendTitle('🎀 Happy JJ Day! 🎀', 60);
  player.sendMessage('§d§lYou are amazing, JJ! §r✨');
  spawnParticles(player.location, 'heart', 50);
});

registerCommand('lucky', (player, args) => {
  // Lucky effect
  player.sendMessage('§c§lLUCKY! §r🎲');
  giveItem(player, 'diamond_block', 64);
});

registerCommand('catparty', (player, args) => {
  // Spawn cat party!
  for (let i = 0; i < 10; i++) {
    spawnEntity('cat', player.location.add(Math.random() * 20 - 10, 0, Math.random() * 20 - 10));
  }
  player.sendMessage('§6🎉 Cat party! §r😺');
});

registerCommand('flowerpower', (player, args) => {
  // Flower explosion!
  for (let i = 0; i < 20; i++) {
    let flower = ['dandelion', 'poppy', 'blue_orchid', 'allium', 'azure_bluet', 'pink_tulip', 'oxeye_daisy'];
    giveItem(player, flower[Math.floor(Math.random() * flower.length)], 64);
  }
  player.sendMessage('§a🌸 Flower Power! §r💐');
});

registerCommand('minecat', (player, args) => {
  // Minecat spawner
  giveItem(player, 'cat_spawn_egg', 5);
  player.sendMessage('§6😺 Meow! §r⛏️');
});

registerCommand('luckycat', (player, args) => {
  // Spawn lucky cat
  let cat = spawnEntity('cat', player.location);
  cat.setCustomName('§c§lLUCKY CAT§r');
  cat.setCustomNameVisible(true);
  player.sendMessage('§c🎀 Lucky Cat spawned! §r🍀');
});

registerCommand('celebration', (player, args) => {
  // Big celebration!
  player.sendTitle('§d§l🎉 CELEBRATION! 🎉§r', 100);
  spawnParticles(player.location, 'firework', 100);
  player.getWorld().createExplosion(player.location, 5, false, false);
  player.sendMessage('§d§lHAPPY JJ DAY! §r🎊');
});

registerCommand('rainbow', (player, args) => {
  // Rainbow armor!
  giveItem(player, 'leather_helmet', 1);
  giveItem(player, 'leather_chestplate', 1);
  giveItem(player, 'leather_leggings', 1);
  giveItem(player, 'leather_boots', 1);
  player.sendMessage('§5🌈 Rainbow armor equipped! §r✨');
});

registerCommand('glowup', (player, args) => {
  // Glow effect!
  player.addEffect('glowing', 300);
  player.sendMessage('§e✨ You are glowing! §r💫');
});

registerCommand('ghostmode', (player, args) => {
  // Ghost mode!
  player.addEffect('invisibility', 300);
  player.sendMessage('👻 Boo! §rYou are now a ghost!');
});

console.log('🎀 JJ Fun Commands loaded!');
