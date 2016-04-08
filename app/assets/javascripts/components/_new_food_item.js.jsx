var NewFoodItem = React.createClass({
  handleClick() {
    debugger;

    let name = this.refs.name.value;
    let description = this.refs.description.value;

    $.ajax({
      url: '/api/v1/food_items',
      type: 'POST',
      data: { food_item: { name: name, description: description } },
      success: (food_item) => {
        this.props.handleSubmit(food_item);
      }
    });
  },

  render() {
    return (
      <div>
        <input ref='name' placeholder='Enter Name' />
        <input ref='description' placeholder='description' />
        <button onClick={this.handleClick} className="btn btn-success btn-sm">Submit</button>
      </div>
    )
  }
});