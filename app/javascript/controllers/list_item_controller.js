import ApplicationController from './application_controller'

/* This is the custom StimulusReflex controller for ListReflex.
 * Learn more at: https://docs.stimulusreflex.com
 */
export default class extends ApplicationController {
  static targets = ["itemName"]

  createListItem(event) {
    const itemData = this.itemNameTarget.value;
    this.stimulate('ListItemReflex#create_list_item', { listId: this.listId, itemData: { name: itemData } });
  }

  get listId() {
    return Number(this.data.get("list-id"))
  }
}
