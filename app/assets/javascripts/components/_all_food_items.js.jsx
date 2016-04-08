var AllFoodItems = React.createClass({
  handleDelete(id) {
    this.props.handleDelete(id);
  },

  onUpdate(food_item) {
    this.props.onUpdate(food_item);
  },

  render() {
    let food_items = this.props.food_items.map((food_item, index) => {
      return (
        <div key={index}>
          <Food_item food_item={food_item}
                 handleDelete={this.handleDelete.bind(this, food_item.id)}
                 handleUpdate={this.onUpdate}/>
        </div>
      )
    });

    return (
      <div>
        {food_items}
      </div>
    )
  }
});