var Body = React.createClass({
  getInitialState() {
    return { food_items: [] }
  },

  componentDidMount() {
    $.getJSON('/api/v1/food_items.json', (response) => { this.setState({ food_items: response }) });
  },

  handleSubmit(food_item) {
    let newState = this.state.food_items.concat(food_item);
    this.setState({ food_items: newState })
  },

  handleDelete(id) {
    $.ajax({
      url: `/api/v1/food_items/${id}`,
      type: 'DELETE',
      success: () => {
        this.removeIdeaFromDOM(id);
      }
    });
  },

  removeIdeaFromDOM(id) {
    let newFoodItems = this.state.food_items.filter((food_item) => {
      return food_item.id != id;
    });

    this.setState({ food_items: newFoodItems });
  },

  handleUpdate(food_item) {
    $.ajax({
      url: `/api/v1/food_items/${food_item.id}`,
      type: 'PUT',
      data: { food_item: food_item },
      success: (food_item) => {
        this.updateFoodItems(food_item)
      }
    });
  },

  updateFoodItems(food_item) {
    let food_items = this.state.food_items.filter((s) => { return s.id != food_item.id });
    food_items.push(food_item);

    this.setState({ food_items: food_items });
  },

  render() {
    return (
      <div>
      Food Item:
        <newFoodItem handleSubmit={this.handleSubmit} />
        <AllFoodItems food_items={this.state.food_items}
                   handleDelete={this.handleDelete}
                   onUpdate={this.handleUpdate} />
      </div>
    )
  }
});