// Type: Equatable makes it so that you can have Nodes of any type and their values can be compared
// Use of generic "Type" makes it so you can have a Linked List of any type
class Node<Type: Equatable>
{
    var value: Type
    var next: Node?

    init(value: Type) {
        self.value = value
        self.next = nil
    }
}

class LinkedList<Type: Equatable> {
    var head: Node<Type>?

    init() {
        self.head = nil
    }
    init (value: Type) {
        insertLeft(value: value)
    }

    func insertLeft(value: Type) {
        let node = Node(value: value)
        node.next = self.head
        self.head = node
    }

    func insertRight(value: Type) {
        var currentNode = self.head
        if (currentNode != nil) {
            while currentNode?.next != nil {
                currentNode = currentNode?.next
            }
            currentNode?.next = Node(value: value)
        }
        else {  // Empty list
            self.head = Node(value: value)
        }
    }

    func printList() {
        var currentNode = self.head
        while currentNode != nil {
            currentNode?.next == nil ? print(currentNode!.value) : print(currentNode!.value, terminator: ", ")
            currentNode = currentNode!.next
        }
    }

    func remove(value: Type) {
        var currentNode = self.head
        var previousNode: Node<Type>? = nil
        while currentNode != nil && currentNode?.value != value {
            previousNode = currentNode
            currentNode = currentNode!.next
        }
        if (currentNode != nil) {
            if (previousNode == nil) {  // Item to be removed is the head of the list
                self.head = currentNode?.next
            }
            else {
                previousNode?.next = currentNode?.next
            }
        }
    }

    func pop(value: Type) -> Type? {
        var currentNode = self.head
        var previousNode: Node<Type>? = nil
        while currentNode != nil && currentNode?.value != value {
            previousNode = currentNode
            currentNode = currentNode!.next
        }
        if (currentNode != nil) {
            let returnValue: Type
            if (previousNode == nil) {  // Item to be removed is the head of the list
                returnValue = currentNode!.value
                self.head = currentNode?.next
            }
            else {
                returnValue = currentNode!.value
                previousNode?.next = currentNode?.next
            }
            return returnValue
        }
        else {
            return nil
        }
    }
}

func main() {

    // Example of creating a linked list of integers
    let integersLinkedList: LinkedList<Int> = LinkedList()
    integersLinkedList.insertLeft(value: 2)
    integersLinkedList.insertLeft(value: 1)
    integersLinkedList.insertRight(value: 3)
    integersLinkedList.printList()

    // Example of creating a linked list of Strings
    let stringsLinkedList: LinkedList<String> = LinkedList()
    stringsLinkedList.insertLeft(value: "String 1")
    stringsLinkedList.insertRight(value: "String 2")
    stringsLinkedList.insertRight(value: "String 3")
    // Removing an element
    stringsLinkedList.remove(value: "String 2")
    // Popping an element
    stringsLinkedList.pop(value: "String 1")

    stringsLinkedList.printList()
}

main()
