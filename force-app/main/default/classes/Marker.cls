public virtual class Marker {
    public virtual void write() {
        System.debug('Writing some text. in Parent');
    }

    public virtual Double discount() {
        return .05;
    }
}