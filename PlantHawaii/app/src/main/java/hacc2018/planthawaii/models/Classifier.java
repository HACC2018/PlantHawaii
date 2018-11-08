package hacc2018.planthawaii.models;

public interface Classifier {
    String name();

    Classification recognize(final float[] pixels);
}
