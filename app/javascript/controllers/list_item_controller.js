import ApplicationController from './application_controller'

const CreateListItemReflex = 'ListItemReflex#create_list_item'

export default class extends ApplicationController {
  static targets = ["itemName", "itemQuantity"]

  createListItem(event) {
    event.preventDefault()
    const itemId = event.target.dataset["itemId"]
    const itemName = this.itemNameTarget.value;
    const itemQuantity = this.itemQuantityTarget.value;
    this.stimulate(CreateListItemReflex, { listId: this.listId, itemName, itemId, itemQuantity });
  }

  afterReflex(_element, reflex) {
    if (reflex === CreateListItemReflex) this.setFocus()
  }

  get listId() {
    return Number(this.data.get("list-id"))
  }
}
