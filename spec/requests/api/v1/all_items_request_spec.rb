describe "Items API" do
  it "sends a list of items" do
    Item.create(name: "Item1", description: "I'm an item", image_url: "some_url")
    Item.create(name: "Item2", description: "I'm also an item", image_url: "some_url")

    get "/api/v1/items"
    items = JSON.parse(response.body)

    expect(response).to be_success
    expect(items.count).to eq(2)
    #need to check that the serializer omits the created_at and updated_at
  end
end
