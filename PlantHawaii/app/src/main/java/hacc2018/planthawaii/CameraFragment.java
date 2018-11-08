package hacc2018.planthawaii;


import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.io.File;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import hacc2018.planthawaii.models.Classifier;
import io.fotoapparat.Fotoapparat;
import io.fotoapparat.configuration.CameraConfiguration;
import io.fotoapparat.parameter.ScaleType;
import io.fotoapparat.preview.Frame;
import io.fotoapparat.preview.FrameProcessor;
import io.fotoapparat.result.BitmapPhoto;
import io.fotoapparat.result.PhotoResult;
import io.fotoapparat.result.WhenDoneListener;
import io.fotoapparat.selector.FocusModeSelectorsKt;
import io.fotoapparat.selector.SelectorsKt;
import io.fotoapparat.view.CameraView;
import io.fotoapparat.view.FocusView;

import static io.fotoapparat.result.transformer.ResolutionTransformersKt.scaled;
import static io.fotoapparat.selector.AspectRatioSelectorsKt.standardRatio;
import static io.fotoapparat.selector.FlashSelectorsKt.autoFlash;
import static io.fotoapparat.selector.FlashSelectorsKt.autoRedEye;
import static io.fotoapparat.selector.FlashSelectorsKt.off;
import static io.fotoapparat.selector.FlashSelectorsKt.torch;
import static io.fotoapparat.selector.FocusModeSelectorsKt.autoFocus;
import static io.fotoapparat.selector.FocusModeSelectorsKt.continuousFocusPicture;
import static io.fotoapparat.selector.FocusModeSelectorsKt.fixed;
import static io.fotoapparat.selector.LensPositionSelectorsKt.back;
import static io.fotoapparat.selector.PreviewFpsRangeSelectorsKt.highestFps;
import static io.fotoapparat.selector.ResolutionSelectorsKt.highestResolution;
import static io.fotoapparat.selector.SelectorsKt.firstAvailable;
import static io.fotoapparat.selector.SensorSensitivitySelectorsKt.highestSensorSensitivity;

public class CameraFragment extends Fragment  implements View.OnClickListener{
    private static final String LOGGING_TAG = "Fotoapparat Example";
    private View rootView;
    // private final PermissionsDelegate permissionsDelegate = new PermissionsDelegate(this);
    private boolean hasCameraPermission;
    private CameraView cameraView;
    private FocusView focusView;
    private View capture;
    Date currentTime ;
    private Fotoapparat fotoapparat;
    Button btn;
    boolean activeCameraBack = true;

    private List<Classifier> mClassifiers = new ArrayList<>();
    private static final int PIXEL_WIDTH = 224;
    //private CameraFragment mContext;
    private static Context thisContext;
    //private Context mContext;

    private CameraConfiguration cameraConfiguration = CameraConfiguration
            .builder()
            .photoResolution(standardRatio(
                    highestResolution()
            ))
            .focusMode(firstAvailable(
                    continuousFocusPicture(),
                    autoFocus(),
                    fixed()
            ))
            .flash(firstAvailable(
                    autoRedEye(),
                    autoFlash(),
                    torch(),
                    off()
            ))
            .previewFpsRange(highestFps())
            .sensorSensitivity(highestSensorSensitivity())
            .frameProcessor(new SampleFrameProcessor())
            .build();

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        //mContext = this;

        // Inflate the layout for this fragment

        rootView =  inflater.inflate(R.layout.content_camera, container, false);

        btn = (Button) rootView.findViewById(R.id.captureButton);
        btn.setOnClickListener(this);
        cameraView = rootView.findViewById(R.id.cameraView);
//        cameraView.setVisibility(rootView.VISIBLE);
        fotoapparat = createFotoapparat();
        // if (hasCameraPermission) {

        // capture = inflater.inflate(R.layout.content_camera, container, false);
        //    Button btn = (Button) rootView.findViewById(R.id.myButton);
        return rootView;
    }

    @Override
    public void onStart() {

        super.onStart();
        System.out.println("activiated on start in camera frag");
        fotoapparat.start();
    }

    @Override
    public void onResume() {
        super.onResume();




        // cameraView.setvi
        //} else {
        //request permission
        //permissionsDelegate.requestCameraPermission();
        // }

    }

    @Override
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.captureButton:
                System.out.println("take picture heresdf");
                Log.e(LOGGING_TAG, "onclick when pressing buttonsdf");
                takePicture();
                break;
            default:
                break;
        }

    }

    private class SampleFrameProcessor implements FrameProcessor {
        @Override
        public void process(@NotNull Frame frame) {

        }
    }

    /* private void takePictureOnClick() {
         btn.setOnClickListener(new View.OnClickListener() {
             @Override
             public void onClick(View v) {
                 takePicture();
                 System.out.println("take picture here");
                 Log.e(LOGGING_TAG, "onclick when pressing button");
             }
         });
     }
 */
    public File getPublicAlbumStorageDir(String albumName) {

        // Get the directory for the user's public pictures directory.
        File file = new File(Environment.getExternalStoragePublicDirectory(
                Environment.DIRECTORY_PICTURES), albumName);
        if (!file.mkdirs()) {
            // Log.e(LOG_TAG, "Directory not created");
        }
        return file;
    }


    private void takePicture() {
        currentTime = Calendar.getInstance().getTime();
        System.out.println("takepicture called");
        Log.e(LOGGING_TAG, "onclick take picture called");
        PhotoResult photoResult = fotoapparat.takePicture();
// Asynchronously saves photo to file

              /*  photoResult.saveToFile(new File(
                        getContext().getExternalFilesDir("photos"),
                        "photo.jpg"
                ));
                */
        File plantHawaiiDir = getPublicAlbumStorageDir("PlantHawaii");

        photoResult.saveToFile(new File(plantHawaiiDir, currentTime+".jpg"));
        photoResult
                .toBitmap(scaled(0.25f))
                .whenDone(new WhenDoneListener<BitmapPhoto>() {
                    @Override
                    public void whenDone(@Nullable BitmapPhoto bitmapPhoto) {
                        if (bitmapPhoto == null) {
                            Log.e(LOGGING_TAG, "Couldn't capture photo.");
                            return;
                        }
                        ImageView imageView = rootView.findViewById(R.id.result);

                        imageView.setImageBitmap(bitmapPhoto.bitmap);
                        imageView.setRotation(-bitmapPhoto.rotationDegrees);
                    }
                });
        //Bitmap bitmap =  photoResult.toBitmap();
    }

    private Fotoapparat createFotoapparat() {
        return Fotoapparat
                .with(getActivity())
                .into(cameraView)
                .previewScaleType(ScaleType.CenterCrop)
                .lensPosition(back())
                .focusMode(SelectorsKt.firstAvailable(  // (optional) use the first focus mode which is supported by device
                        FocusModeSelectorsKt. continuousFocusPicture(),
                        FocusModeSelectorsKt.autoFocus(),        // in case if continuous focus is not available on device, auto focus will be used
                        FocusModeSelectorsKt.fixed()             // if even auto focus is not available - fixed focus mode will be used
                ))
                .build();
    }





/*
    private void loadModel() {
        //The Runnable interface is another way in which you can implement multi-threading other than extending the
        // //Thread class due to the fact that Java allows you to extend only one class. Runnable is just an interface,
        // //which provides the method run.
        // //Threads are implementations and use Runnable to call the method run().

        try {
            //add 2 classifiers to our classifier arraylist
            //the tensorflow classifier and the keras classifier
            mClassifiers.add(
                    TensorFlowClassifier.create(getActivity().getAssets(), "TensorFlow",
                            "opt_MobileNet_optim.pb", "label.txt", PIXEL_WIDTH,
                            "input", "output", true));
        } catch (final Exception e) {
            //if they aren't found, throw an error!
            throw new RuntimeException("Error initializing classifiers!", e);
        }
    }
*/

}
