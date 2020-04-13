#   This is the ImmutableListNode's API interface.
#   You should not implement it, or speculate about its implementation.
#
#   class ImmutableListNode
#      def printValue()
# .        print the value of this node.
#      def end
#          """
#
#      def getNext()
# .        return the next node.
#      end
#   end

# 回帰的に自分自身の関数を実行する
def printLinkedListInReverse(head)
    return if !head
    printLinkedListInReverse(head.getNext)
    head.printValue
end