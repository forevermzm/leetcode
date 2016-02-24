// Java Iterator interface reference:
// https://docs.oracle.com/javase/8/docs/api/java/util/Iterator.html
class PeekingIterator implements Iterator<Integer> {

    private Integer nextPeekElement = null;
    private Iterator<Integer> iterator;

	public PeekingIterator(Iterator<Integer> iterator) {
	    // initialize any member here.
	    this.iterator = iterator;
	    if ( iterator.hasNext() )
	    {
	        nextPeekElement = iterator.next();
	    }
	}

    // Returns the next element in the iteration without advancing the iterator.
	public Integer peek() {
        return nextPeekElement;
	}

	// hasNext() and next() should behave the same as in the Iterator interface.
	// Override them if needed.
	@Override
	public Integer next() {
	    Integer next = nextPeekElement;
	    if ( iterator.hasNext() )
	    {
	        nextPeekElement = iterator.next();
	    }
	    else
	    {
	        nextPeekElement = null;
	    }
	    return next;
	}

	@Override
	public boolean hasNext() {
	    return nextPeekElement != null;
	}
}
