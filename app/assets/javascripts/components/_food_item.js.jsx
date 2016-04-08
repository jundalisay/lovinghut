var FoodItem = React.createClass({
  getInitialState() {
    return { editable: false }
  },

  onUpdate() {
    if (this.state.editable) {
      let food_item   = { id: this.props.food_item.id,
                      name: this.refs.name.value,
                      description: this.refs.description.value }

      this.props.handleUpdate(food_item);
    }

    this.setState({ editable: !this.state.editable })
  },

  render() {
    var name = this.state.editable ? <input type='text'
                                            ref='name'
                                            defaultValue={this.props.food_item.name} />
                                   : <h3>{this.props.food_item.name}</h3>

    let description = this.state.editable ? <textarea type='text'
                                                  ref='description'
                                                  defaultValue={this.props.food_item.description}>
                                        </textarea>
                                      : <p>{this.props.food_item.description}</p>
    return (
      <div class="panel panel-default">
        <div class="panel panel-heading">
          {name}
        </div>
        <div class="panel-body">
          {description}
        </div>

          <button onClick={this.props.handleDelete} className="btn btn-danger btn-sm">
            Delete
          </button>

          <button onClick={this.onUpdate} className="btn btn-warning btn-sm">{this.state.editable ? 'Submit' : 'Edit' }</button>
      </div>
    )
  }
});