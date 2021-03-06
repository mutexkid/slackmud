class InventoryCommand < GameCommandBase
  include FormatUtils

  def perform
    return I18n.t 'game.inventory_summary', nerdcoins: player.nerdcoins, 
      formatted_inventory: report_inventory
  end

  private

  def report_inventory
    return I18n.t 'game.inventory_command.nothing' if player.inventory.unworn.length == 0
    format_inventory(player.inventory.unworn, player.inventory) 
  end

end
